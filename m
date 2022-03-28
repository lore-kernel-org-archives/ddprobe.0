Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5991B437E
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 18:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648492138;
	h=To:Subject:From:Message-Id:Date;
	bh=wbE09t6BRQIduZFJ9PRvkBFp/7Q1lHJi9uXmtNFolMQ=;
	b=QC4Eur6CKcxvUkgIcElwssIx6C9bxJhwgfmWkiQM5lTRAUPhZdoXkc+opWgOODxR
	/9h7D6wtQMBC8xLdrHTv/n8FXebtMz4LnPb8e8inyHEo0D46MWg8lVwBkvzrtm+oiVQ
	oyKIlK0JmHhZhiVPoK0xhS4qsiR+ygUHIhLosBNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648492138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wbE09t6BRQIduZFJ9PRvkBFp/7Q1lHJi9uXmtNFolMQ=;
	b=PbKK24sFxX+8iM3Hg2OZwUPcz2LtAtmCTtBqlZ8BgP12DmTdGlqmjZ0cRoyBkoPK
	46kUCLYdMBAIBj4iKiTclGsY7Md7PAd6Itn9KBffyBvgU/9qJz0cSiQNNZnCTujq1y+
	6eNNtMkVXsYPmFXcH50UPBo83w0nI6DS0usv54as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1c9cf04-8eecfc22-7ab2-4221-bc92-bd4535ed3e24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9332c0e5e1ff2eec5a211641ad4496a8dc190665a09a886d9b93cf6ec7a32f3e
Date: Mon, 28 Mar 2022 18:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648492138
