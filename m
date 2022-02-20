Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB985A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645346485;
	h=To:Subject:From:Message-Id:Date;
	bh=9XNCqmK+lfg5VuXJz63wPjdUwuBCcie2y4Tc9bjRvrw=;
	b=m1vxY+jeKFUVF72xJyuLh4V7ppY1G0uMMhoRZgHXK33M0fdRas3Da8vyjsQPEQpu
	+eRc0jnkrb2je730VibZB44WyBgOpBndTnvHarrfBYPnU1epvWMZefqXp5MWQMSnnEu
	UKEVPF65YQJ4FG4HUlHEi+CH31FXHUmtgs3ngoro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645346485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9XNCqmK+lfg5VuXJz63wPjdUwuBCcie2y4Tc9bjRvrw=;
	b=FeFscdZaznxa2juDcTuTv8AoW8JqyAB2oKjLNQrUkbjbZdCj+qJqrwX216AZmjzT
	NkOZ/LbJZ9yQ4NW+p1o+zPVXrrkS5ZdLCXWdNaQoT/0huqBt2XEnjAB9gIgLz0AfFdt
	OGhy2AhTrFY2EQ584ApOvjYjTmwbctQy/rWGy4ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f164af23b-67240fe8-697b-400b-8c48-2ac322f484e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13a19fc404fa9da06c69df5e8f94c758ae67f73e4bc7106ae1ac9f533e1abb47
Date: Sun, 20 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645346484
