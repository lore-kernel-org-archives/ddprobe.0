Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A372565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652542499;
	h=To:Subject:From:Message-Id:Date;
	bh=Hbr0tQIrkZBZglWFE6ieSsS8LUJ/2aiL1Dz0d9JiJAg=;
	b=Hprq1GmZMnJQ6Ib278MHJP3LTypphzXQqVtXMnP9TP7z/iGXefWDIQ7udXBHSPmM
	chqpvb1OoTpSg1iFQDzlrm7OVEJ33qteMsrH8s3ooOgW/Y2j4Vys1ykxA3qNicdIycO
	tkEg+fJlZl5PQQhP4ZoD2m/5NdbKHAhJzmp+zquM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652542499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hbr0tQIrkZBZglWFE6ieSsS8LUJ/2aiL1Dz0d9JiJAg=;
	b=gpzYMl+14cqKVKbW+t470lSHVkO1E/l5e4nTlejhFzBgdYdqltkie8cv6l+VA/Ah
	Lj2+gN/E8nXXMmusaZVBSrH5VPTelCcA40DVxd2AVjABbHRNd5QTfdO9unlx9PC77/J
	zkfZPLp06MYY8zKF0Z/3rPEDuS9rGltymHVh8Mq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c33569c8-08913472-90f7-418c-bbed-bff07088b170-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4a396c47c85398142ff4d1b11fe87d3b034f85243e9c7dd902394d40f1d0520
Date: Sat, 14 May 2022 15:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652542499
