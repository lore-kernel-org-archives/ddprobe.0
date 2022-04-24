Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C9E33E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 21:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650837418;
	h=To:Subject:From:Message-Id:Date;
	bh=8BnoYsr+PYwBqNSEY8ec/gPrv4Tb3qTzIfwDq6ss9E0=;
	b=hCIezZroC93jDsAXuPZ2tZ/po/FjHKuc/A/pt21i2PwboPKGbwyupHsWtT1SFThl
	y94n8MKcYrW28+3x9i8AmknEpTS+tS3ZnI4FJuOVBOrjhwwx4FOUAnL6vYKLA3DLwZv
	8Ja1SPQnL51sdTtt7+QMIsXPoOEukGIAT8Cihj0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650837418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8BnoYsr+PYwBqNSEY8ec/gPrv4Tb3qTzIfwDq6ss9E0=;
	b=Y6N5c0QVyCx/dvshNG+ncyjxAxqGslqiXdhrZ5mlMYFr94xcWXsr5c6WejS/bnIm
	IRG2H57BkcD4Srq5JLacA8SqEQLZOpdmYagTYgQblCYCVPOKEJqyBle4wo7qhRB9tc/
	ldD+NIsRMEbwZzUI1omXKamEgaPmOl6n6zqt0ptg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d93f117-10e706ed-5f0b-420a-80b1-a1c28fd645dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e8fe427823a736de70a221f7f634ce363503e198f845316fe78d35c60dc5ecd
Date: Sun, 24 Apr 2022 21:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650837418
