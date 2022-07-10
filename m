Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0824B7B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657467412;
	h=To:Subject:From:Message-Id:Date;
	bh=sOG3XXhfWDGZVNNKcf+Jirk2s39/UcQ6nRLpR8gkt8k=;
	b=e6PKqJznWD9GdW9nXGYMe6JFJTir+xXWkeWNSDb5jIAYO2k8M0LEUn434S3pG1Dn
	dZP9u/TFaJPry4ShZzkv7xn0hPU3bgYylej7t7GmvEtfnQTk3dnreQqOZ9z7Ocacg1V
	pX/mN6lzyyEZI0611dSiaQs4Xcp12M10GNnoz7GU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657467412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sOG3XXhfWDGZVNNKcf+Jirk2s39/UcQ6nRLpR8gkt8k=;
	b=ioubNlwqklV8BJrXwPO9QkQ3qXOcXgg0GcqMduhYfnoCbWNZZHk2ZWRrXdf8+zfm
	j3iC39Amt4Xm/O61mcsBbdWeqgyyVUuRyF6Raq2auAFAPWSz8lyP3YV+AV4wC4erzye
	ZamKxrMbhyzvtx5vH10wxNMZtq8edRnlK6EfZsfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8c19f44-ef2d85b4-9697-4520-a589-318fe86a1495-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75bad3234aa0202b0f212a9b4eae4a2014cb07b81dff55a301dbf3f8f35daa06
Date: Sun, 10 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657467412
