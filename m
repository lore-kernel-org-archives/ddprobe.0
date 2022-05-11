Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388FA17DA
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 11:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652267579;
	h=To:Subject:From:Message-Id:Date;
	bh=3JcFKb77ij2ycJwfx6GiYdoPNZYmPSOq5HQBSZMZbtY=;
	b=HcJjbIMNITS2RlyvwtDE1TKksSfkznhCel5vnpUWQ85Ptk+wRCvHNXUxfUXN28Fl
	syKRehBPBMyo+i2qy97JgR3H+36CY7OsSWH6MVuXZijUmkQqOQZimSZU0KMr+/V5n7V
	JOlcSKcXRS4lmXUgQBLoJ8vIPZlFiQ9ZoxKXujy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652267579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JcFKb77ij2ycJwfx6GiYdoPNZYmPSOq5HQBSZMZbtY=;
	b=LKAjOKmu4YCN8pJd7EoFtkPWedatN+SO0iW+BYY2v9WrjGgjf7AV5Dtj8QgHSrrt
	91OdPISAmkGoB7EI4au1xr+6iBh3cTtFsvwfTF+IxsPx4SGZPNFIU9KEr9Zl9aWeIGv
	M6z2ZTD/DH6+uSPTtktkW63rppuIrwI1DbNKT3kM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b2d277a1-2cb25573-b8da-4349-a673-aee9bb1006b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19195d369a7105114f3dad94d42260662b4d29c992621924b92c1aa18640820f
Date: Wed, 11 May 2022 11:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652267579
