Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66D87B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660795853;
	h=To:Subject:From:Message-Id:Date;
	bh=kolh0sEjpp306evdjxSnJi6ogSOUp9tOFL9Z6tTI0dI=;
	b=jnsKNqr7quzp6iMZ/vH2VKcmhi5+6nWnhJql/x2c81PzyrL97mGWWaQ28F2h5aFe
	Gyeu57r0jh+oIVZUMQPuKSYaht/HnNVVdIdru5DfINgB679EJgrsNN+pbYPOwTCrVKo
	6nsCq2Ic1IThqhZklcK/MTWGkoPkNEd1akx5yYj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660795853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kolh0sEjpp306evdjxSnJi6ogSOUp9tOFL9Z6tTI0dI=;
	b=Io7I0DRbhBLveF9wpPf49ELpUH3Vwqlc8asWI00Yh/iS/HAOKVhyDTvGsLjt7sGN
	pzZoxwvlXfnJ+wUGBMzv5u1tJpdde+3xEj6gvz7TmPA2U9yEYLRCTQmCia3wkg8B3X+
	MOC0fk2pdJKMJsDYrXZCNwj3EdpualjEd12QR5nY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af25981b-2b567340-acdf-4a67-af7f-49aa43c4b956-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cffaed0a9eb0c3f85a94a7798b83eacb3cc3aea937807c143c8aa96afafaa06
Date: Thu, 18 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660795852
