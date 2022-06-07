Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB0C320B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 20:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654635539;
	h=To:Subject:From:Message-Id:Date;
	bh=EBwiaqtwBGkzbzUe1VZi7GasAv9ynMg2I6dHDBSNv+s=;
	b=Q/NerhXrn7yBy7hJTr0GF5n59LquKxTz0gMfMqrM2NXknMLE0W59nNjRzjVOMxuZ
	umrMG6ntdxwxkCx6DAci2qgETMebHIJwOsayMhuJ5eeSy+Czo3LsR6Yes9ypp3WGtHM
	amkMU9CBUov/CtrVeQWxNLUKlfZFVwwZmLk9Ks20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654635539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EBwiaqtwBGkzbzUe1VZi7GasAv9ynMg2I6dHDBSNv+s=;
	b=JquX0GMM2XBvq8JbcVXLTwKjPLaiwy9Zy1F+6Tn5KwCGQ3hn1us8OoU8ZvlPH+dm
	9UPMjXPtu6SMYOy+LnuY+UqHKNiENdvSEKiPyqQ6IpasT9atrYauraAAO65g6H3zHOf
	W2LyFm+HPEXIZwPyMqcuzf0MLMFoH3lxyUpNzJXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ff6ab6c-cf32df0d-2f23-46b3-a3a9-5e9343877fd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 518f459989d7494f5bbd54c6cd35e5c30436bb08b7c6604b83d55ee73ca45fde
Date: Tue, 7 Jun 2022 20:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654635539
