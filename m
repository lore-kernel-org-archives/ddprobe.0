Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061111867
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656740812;
	h=To:Subject:From:Message-Id:Date;
	bh=8aSoCgShHYIZFpOpEMQKIOczXPxExCNWq1Vp4eeDxWQ=;
	b=S2rJEZD0ZBap5KbqKEOYHN2wdllETnrkWw8BPc3p9L7eJSDEjA95zlR11+SkyM3z
	3qTP0sUjBVSS2qOH8zJREDyloJnd8yC0PPzJRnwgF9pQFtQqDlHnQy0TnswwMdoa2J2
	MLo3WvpEfGti9uem+rBBMqE/zrZZxIbyrRlVUz2k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656740812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8aSoCgShHYIZFpOpEMQKIOczXPxExCNWq1Vp4eeDxWQ=;
	b=E8Us8NCluin1/papv3jtUnLbBeZyxHwZc7P10T0tQj7gI/gA+FV2af8Z14n/606t
	r93ekyUfpb3KBQT1iWmV/1hO3Vl1YHQcUqc0XEumDKxBACwOnbzlcTGzTXNmgo0Np69
	xk92U42QabVZvadJAAqPjr1Hog1jKSalvn8Mb2eY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd7295f2-d62adb7a-0e33-4e97-a615-b7e3f2c3dc40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6949882ba93fd1e8c8d36fd8819c4c81e89b637de4f535d324a8d5851091614f
Date: Sat, 2 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656740812
