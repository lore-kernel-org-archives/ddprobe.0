Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522810E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661312452;
	h=To:Subject:From:Message-Id:Date;
	bh=q6FIVoM/891ffkPW/dHWNPkKWIBzDZrfWRcIB46S1tM=;
	b=a7lPTmpIzdq9UqAMXmZE86lBLfnheRL62swJBBR/oixZC02i5JdS3m3eyYEODjBC
	Yo5C9X5vNKi3e1KMd78qEMXVmdZYir4uNelqiKF9X28m3w1mcCyXEHD6dJ4jGRgCBk1
	CIJoZoDIf6i06c2bKa5bG1ay4FQrxrzqCCyZqfMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661312452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q6FIVoM/891ffkPW/dHWNPkKWIBzDZrfWRcIB46S1tM=;
	b=g9kF/O4AK+7r2s/oaUIgphIRpvwqvSns3c7AAWBcLJOZuSiGtW8R0Z+Tn+wQ/BU0
	dXdd8P2jBX+PL3s+a+IVZYvupMH1cD2+fKzhHyWJZnvWvw9I8FfmD0vYeYXkh/ZyZXj
	ri7wfVrCSMJejWqoW67Ccg0G/igG9qM/lV5GcU3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdf047c4-1cab94f9-89b0-41f7-b1ca-13688a11a1a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9f09f1b25adb39c4a3757e674ba0f9c61d0f7b123d205429e4e5e43656354f7
Date: Wed, 24 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661312452
