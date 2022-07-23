Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B67E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658596612;
	h=To:Subject:From:Message-Id:Date;
	bh=Ns9gFZKTQ4LGRFCt+ADmzzbDJPjxzoEKp/cH2ZJ7nC8=;
	b=dyegcadKJx+E7pbHg4JzMrCkVdO+Ityj3XRUjSWiofmO8l1jQ585m72/M4H9P20Z
	iQLvYladPi0S77c1HDwttLdUN4BqIdVYwFuAU9++FtNpb7vAadNDAJv0BEuyqgiiPAP
	Uvnf+UnifDdvIzBRrQ8Mx17ujf52O5wG32Z2/tIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658596612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ns9gFZKTQ4LGRFCt+ADmzzbDJPjxzoEKp/cH2ZJ7nC8=;
	b=khvidMZVuiCATHqRKe4mHXeOw3HfdH33siXkfbXGOD74QuoEOpSkL7D0jAJQ2OIS
	UJd7lolJOLeaeTmLBkmCaaKC3gZ2v3kGkJXdZE/aOweKv/kNWS6vefxNzVpZYOWezXi
	grgilwSAl1TWisDLQ8EUbgQ7Ifkm9DGwqJMVS4dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c0fd894-4a207c5b-31eb-42c9-b300-404a7605e62c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8787a3c3233037f71e43d0420041849ecea9181a1b0fb1aed1092a9be4321928
Date: Sat, 23 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658596612
