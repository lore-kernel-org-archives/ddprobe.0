Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298101875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 19:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655924819;
	h=To:Subject:From:Message-Id:Date;
	bh=RgUBeKYLdCnA6OKxLnb+ZYsl3kc+kiV1eHK3Fo2iCcE=;
	b=aIfGkwnNeQLIcOqgPT47hbXajLqQNZ1aCNCu2WDeAmvIAO9MzPrcA46rpSGftubb
	hfAFmdgyWWyfyk3NuSxoXof8tPqhZDn4X/xZ4eO7WMPLEnNx7HTejkfTxsjLzJnZ21n
	9uXo2/0UpnmGCBkjXBpY/H2QJQjHUDSrlHBS6Hrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655924819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RgUBeKYLdCnA6OKxLnb+ZYsl3kc+kiV1eHK3Fo2iCcE=;
	b=OR5vJRCFI++PMEKDsRdyz13rpYK3Fz8DAV8AhDMBLFMdLtOvBE4A3PPjf0aI8WJO
	UuozpdxMnRFAJpahDYtm1JSVMcsJjmF73kJVxACYVIWh01DvOem6jO/fiZRWfpK0saH
	G7kzyF7yq9krN3n8AhhmoOLDu4zR2dc49uz5sVUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ccf8580-c4ed4a29-7a99-4553-9ed0-3ae9ab4fdfd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 546d4fea734c53464bd00132e8bcda0073bc6941d1d6a977cfc27139cafb7e45
Date: Wed, 22 Jun 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655924819
