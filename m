Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F7E7A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650372658;
	h=To:Subject:From:Message-Id:Date;
	bh=P9uYPhTki5g8Qc92TAp3u2Ir7LDOFsqoflZvY2t45VI=;
	b=JafGcEgcp9aC6PHS+ICITjo6uUJvyuLIBv/bUYUdki6lKOx5iIfXD5yPnyEwmDh0
	7rnudnb9QPCeC0BoH7e03YMjiUk53HsHc4ODcwyMhScH2TsiqJ5mbSdsqPAoToBCAnl
	5a1arq1lWe+749qm3bcS3mYO3WuJYSlNHff1gL18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650372658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P9uYPhTki5g8Qc92TAp3u2Ir7LDOFsqoflZvY2t45VI=;
	b=LnTf+cBIR5YJ3fsCEN8DDfd6CU/CfkbibqWpfCGazJ71kkOOmPY/ZhMmyyWEpaSo
	wIokrA5BHAX11Fp0XlEToEMQq7Ds3YC+q/wx7jQTtQTG2Br4dyxlAc1zs9lzWpGHkqe
	kN+SylseKSHrFFwtu8a+vCr+I+xI9RW10R4h+u9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041e04450-b0575a51-5bb5-43c2-a99b-3033022958fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bcc7c872de7a46122739900b4aee3c4d8b8bf4a53f2222166ed501756d5c4b4
Date: Tue, 19 Apr 2022 12:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650372658
