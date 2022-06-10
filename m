Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6257F2F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 21:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654897199;
	h=To:Subject:From:Message-Id:Date;
	bh=o229ztuX7V49nQ8lKUS9Viiwug8Ddfbb9P4qyYq14kk=;
	b=TliDPdsorHDZIrO0x0QUgQ76vQl7MmtNxQmlZktSWhZcs7Uskvitp5YJ9iHdAiv9
	6hiUPsLjJFzOYfnJJVOCmlVlAWxd1IV3a5afeDGYx1Dfsjgy8K6XPBQnJ1RHjwWrjI+
	SB+fDjTuiU6UTs/0xTcfVFhg3AfobQigi+0vz1gk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654897199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o229ztuX7V49nQ8lKUS9Viiwug8Ddfbb9P4qyYq14kk=;
	b=H/g04CVz8EEFCnuNzacAYvFxvDWR6FdYdkdMe4rBbfun9hmDq2tgUt1CXOJyuYg+
	tZMMFpoFkhGrSnsmy6Y5mj+lEU72rSPZ0ttzV7p20bFbmAVyfT+Qlrxf3J/KdAu09Ev
	0Z4VdFwgUfgeXA3O57d/0G8s+ehEyAr0UU3tz3DE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f8f48a6-fbd99699-3fb8-4918-9d10-94c5cbe12a38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69cca76d3863816294486a1fe4a62d35ad4b99f97d3502ecbc94d8c527acfbfd
Date: Fri, 10 Jun 2022 21:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654897199
