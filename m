Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10257A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647311485;
	h=To:Subject:From:Message-Id:Date;
	bh=OuGGvZimuGqdnLA/HujHHkDaia4RwC0GqJD+0GyWPWA=;
	b=Io4AulDUKwk+OVc468yKZwqbvQ3dM0Hy7HTbBBJ5/R8rzFiLbxkVvL4njk/g+50k
	E47O4YgsvyIPzeViHOSadmEVZ5K2xSDPKlgTczMKmeCLWHZQD9/jMREa5Xbivp9Hpo3
	suMEc/Rv4KX08HKoPRFQX+JEDR0z+rJ25HF9ImRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647311485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OuGGvZimuGqdnLA/HujHHkDaia4RwC0GqJD+0GyWPWA=;
	b=Qgw8mZKQBeTCeIh7fH+g1BhPGtU0O56MOKGdZEChmk4sd2cG6Y4TLcXe4orieDIa
	f65n5rotCqC1MXZMQKE0f4aOXgcnoNL0FJdGRWSw4A25edOyBFV2X/FYyqiY6hp2lVC
	eVQoECIzLUoya/a6+3JiSvRX1Njb5siYwlotvWlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b6a7790-8f683f45-0ba6-4a6b-97df-8b5a62609d62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a036a3cc0587b01885f76c6719808d9f9154c3e8748090184ae3ea182786a79d
Date: Tue, 15 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647311484
