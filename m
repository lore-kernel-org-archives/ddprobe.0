Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914033D88
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660825253;
	h=To:Subject:From:Message-Id:Date;
	bh=fDmLah8ErDcHbBE2b//m5uclAsMpp4lvHjFeVdXA2GE=;
	b=P5by2uEeCeDQ2qOrg0dE/1TqikCmlvYW/qSDRmhoEVmbYxnk7d14unBUWnSpSp2P
	AKQAgRx9qi+RdUuHkPOMO02cMrDujs4axNYY6Ruo2oEyl6oyUy6g/WydEP3cdiosHeV
	fG6mPWGbwdEQcPseQA9B2EOXKBgAbVD/W96qSDOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660825253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fDmLah8ErDcHbBE2b//m5uclAsMpp4lvHjFeVdXA2GE=;
	b=KewC+7kmKLbXmrJVhMwyC1AtOEkyWlvsfN/+sDWyJNQmD3l08bmA/5csVEHfAfLB
	+WGMKiKY35G1ZoHhZPyYU1k/MRRz5KXSxTbhPD7xi7v8Jwqyvi42jwMbwqXDX4M53Xc
	okYrdc/g9LVY8JJnqkTfbROse/MixmUcpO0C3kc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0e632d0-42cdb0f1-fdce-4aea-b656-9c4d389f6d3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b074f32db5222bb42c3b2393a15c0b4342669a2624e0ee5029adf3e65119bb8
Date: Thu, 18 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660825252
