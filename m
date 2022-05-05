Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A222592
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651769338;
	h=To:Subject:From:Message-Id:Date;
	bh=ZitE0xwyeEkdIXnr4f19FF7vOds2WpJ0wYdm+QZ/TX0=;
	b=P6/EFD12MC58i28M5LloHwiOLYvXtsQZULikTx4GjZBtXjF1HKdqRdh3uvwGWhOi
	BgjT5sM065DbwDRus47rRXwTcUe1uxqTCo98ssXptllul4+pOM1WjpnYWU54MHfB2fh
	1PqWBfW8RtTBJQbmF2Ylyy+30OE4WB6Qj//Ysy8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651769338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZitE0xwyeEkdIXnr4f19FF7vOds2WpJ0wYdm+QZ/TX0=;
	b=XA+8CD2iSLPop0NghitWJ84YqPtgBKvyn1/+EOWYSfwaGse+R6Pnc88SaVS89Eiz
	rGwR7eZCwCzi2QTUhKxhp8ZHs926ZBrbzzKqeuI9YFvLV9Ets/dFFucAxvOSt19DPN0
	BlOCnhGUjK3ysBh9DluWrvDbk2uZKaGDoW2U8a0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180951fe9cf-19dcb3bb-fbc9-4212-bc54-2a88f5f657fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f74ceef8a9adb228780481582db4575135f60d397433517c4a775cbf8655a83
Date: Thu, 5 May 2022 16:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651769338
