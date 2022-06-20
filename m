Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFD87E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655709359;
	h=To:Subject:From:Message-Id:Date;
	bh=YDBh8oINU3zrc5Hgs2/TZVKksYi/PlRgL8RNbTm/Tbw=;
	b=FTSiHCvQDnv6MJgeIaaFsAukpapmT10Zo2qp9wCyMzPIQh6bb98ldZ6lJMrLTWjc
	daQLgBjcDNWnZ91Ts/V4xe8mBaSjChApzJq1fHVw7hp3Kd+W9rxPh5vu0E3akXFl+kH
	lf0hyNLQvvaTKzi3n9hKjkfXHzQFWoG4U/VmkU2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655709359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YDBh8oINU3zrc5Hgs2/TZVKksYi/PlRgL8RNbTm/Tbw=;
	b=RFyb/mQgUb/nti1iJJMxFSla844Ut20YxqCBGDfm/V3OSX+VC+j+1LNnZwZ5OWfY
	s51Ks8Ze2mcCTd7i2tJogVlfW1IKF5O0H0g2jbb5upq7vRy5sm2enFxOcnePIGVUhc9
	WPrvtt0vB6tWdnI3viUax+4gADjjN6SHZo2WCH1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ff7dc83-9387555c-1da5-4807-9382-a008ef5d9d02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a1e63af61f8e546b6ab8237dd3d110e378f8319fe5577e791e4bd33914659d3
Date: Mon, 20 Jun 2022 07:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655709359
