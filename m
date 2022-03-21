Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81807B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647828685;
	h=To:Subject:From:Message-Id:Date;
	bh=fbKx3ZfyFzjE9xwMYo/HSj78w0LnfUcJjkbShFlQxMU=;
	b=A9q4IutfMyMDg9TryiaNGWbPVXZYT27nUcEcvrVb6q8d5aq+rPgpqeNrpjXt/q+c
	WRnMxfmleb7twIlLX8LYAeUYp4kn42MGc1yHkTRfWkoSIzRjKUPxTA2T+n60WdRuph3
	IRR+HDfTah3I0CgzdG9GNYTZe81uH3FYUSFM54lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647828685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fbKx3ZfyFzjE9xwMYo/HSj78w0LnfUcJjkbShFlQxMU=;
	b=LI/FAKzSzPHa27Px/nD9/ldwtX9BEFhfGKC7omXg6OGUB1wpDcgvRYWsISfq5u9B
	TtvvnijOqYukoU2lCZ8Jn18GF1qsLFBOfTUW8i0r4DJJnm8Dq0RT7lGmiAytGiNpj86
	sE9C1+XJMHYE9mfoa8+sTWstNeq9EWdHZafrjZ1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa3e4fc2-43fd62ef-7981-4117-bdc0-c6513b24a8a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb95dc9b61507e27357c9f96285c3408ace4bb54db6f6eba4f2b86c652b91095
Date: Mon, 21 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647828684
