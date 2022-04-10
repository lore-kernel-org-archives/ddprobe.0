Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6E4EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649597398;
	h=To:Subject:From:Message-Id:Date;
	bh=mb3388Gau2UWq6Rq7LOQ6vB8uKu6IkwP5AnB/7nNBls=;
	b=fPTwssUmjl8Ak32RgHAw+Gx8p4WIu8PIPJYmjwLxkpHlddXU3ddMaTFQtgxm+bEn
	DMlxCdVtMZluYHmceasRhVYxLJr3w/Q7Qw3VkF58pa2Xb5kiIMDzAtknatX1DNdQjdo
	Gem++yS/tSM5qV5Q5PnaFCna5ExanxNj6Uikz5Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649597398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mb3388Gau2UWq6Rq7LOQ6vB8uKu6IkwP5AnB/7nNBls=;
	b=ZomZ4p1342FbNV41gjSogiwk9ETbZNZ7Ppdy7srqd6NqvKkPD4u9kwRQtH5aNqOp
	O580G5uV7TsNg+ZM34idtAggxJhRMiRDGWN6/tgRr5ZzBSNqVcWx5mXOe7PAfAVc3pX
	eIOOx8ygyxDiSWZOjKoRRCiqFbV//teQUKhCosqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018013aabd7b-1f7b401c-89fd-429b-9322-351c445c29cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd08923e2bb165201365e06d1e1cd46cb96f2b933f51d402173d9a9a3d1077a2
Date: Sun, 10 Apr 2022 13:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649597398
