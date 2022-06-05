Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060CF468D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654396919;
	h=To:Subject:From:Message-Id:Date;
	bh=6lUYIrWVCp7ZKq4mmCajaPSyE7q8zQ60IFJTVhNBF2I=;
	b=lmVEtpnhNe6tx3I7UfKHGTgyxw6ELhygMVgiIjclOKMnlg/RYEEQ5RUopdqLA7Oy
	NmvrSKzWUf7BBvFPtQZSGxIVUO43kwpDViEJpkBPaC6VqVZ+JNwQDXY0ovqAaPR5fSo
	6mwm4SesZwuKRSDW1pfPuLo3aJ399XtRw10JqvM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654396919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6lUYIrWVCp7ZKq4mmCajaPSyE7q8zQ60IFJTVhNBF2I=;
	b=F5qH1omzQm0cmxqsnBmFxKW7n5PKHDsxyJb2XG8JPlcFXQTRcYV4Lh1lvPds0J2P
	ODiD8HQAZu7Gc8wNrGwg8osYq/Cu8S/KMDXKGUArhuPBtEHTwW+zV88/TK3KAbbEc85
	C2dMhixVJRp+W6lk9zMgHSBvfJ0eHyAmKO9T3rNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131bd9ddc-c59d436a-3299-439b-be6a-40e1647c3f2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87244299f9b0623da774bf155024ad07ef57728230504be18414fc5b28249174
Date: Sun, 5 Jun 2022 02:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654396919
