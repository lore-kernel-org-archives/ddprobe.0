Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42B07C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 08:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650874438;
	h=To:Subject:From:Message-Id:Date;
	bh=fDA/XFVOht0P+lvxyYj8AL/7zkUJkS5r1Dxd5qrpO30=;
	b=Z7O2BJ1unNkRUBobLL3uoxMpVLP4W5FunikC8kP3IU4AkbVjdsEHErSiNS6jAJzY
	Z4sMwC8fG3AyUFpfQbZo/bjW06bS/2LOaMKH6K2Deth944IOUrDwVvW2bacm/NxcrxX
	v2oc0dsb+PF5G57oGn3Sdis84xTsRScG6Zt+52qE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650874438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fDA/XFVOht0P+lvxyYj8AL/7zkUJkS5r1Dxd5qrpO30=;
	b=WQPhwBRb4GQYeMFNwEfxTqOGeKIJQ1bYJRbaK+Nyr/aL+EeWciD2ND4dugFIjnsD
	T0RjuyOVyPdO5GngqgajnW3kLrAT9p3UFE6X4tWxv5754ELlK+Sgl3f2CcIIpp1qCHc
	frisZNORiwzHDc3cSYajT42jlwGNtXfVGcRylrhI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805fc8d2b6-66bfcbb2-c931-4b9c-8be4-1b7e94bf410b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 237de3e99ae2eba3634b58c07c4f56ee5833e79125bac5837847ed7c45e487cd
Date: Mon, 25 Apr 2022 08:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650874438
