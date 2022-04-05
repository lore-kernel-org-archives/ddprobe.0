Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2C1321B
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 17:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649179798;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/hX0EMSDW4Hp2M2XI5+bBqx8d53Yc/hO31xgIjbVhc=;
	b=M7V+YRRuNdtGen2pgQ9Y5p0blK/+C2Cl8lv1ryNN2mj95RxxNa8m/moby112CcWh
	bRkVHTPvHna6RZLBITMYAKXlo/fHW1wCk8MC/sHDKvEwbyvwyUF/vE23WcQtTOYQwYW
	zzRn0rOdtzNE+JDa8uTpaGbxvV/q7CtizKJe9iTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649179798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/hX0EMSDW4Hp2M2XI5+bBqx8d53Yc/hO31xgIjbVhc=;
	b=EmVLlGzrQYhWgnUox+QRTK0N73PBlHBCNLDlyPlLjqDwfyD/VapuGpSjiMJ9+Vbz
	B2moKKEO/+gZmG9dZ9wSEyAYPwgFX4RiuZs1oNOT80hUUm4nXWr/NGdQBaf/a4M/sRY
	TsbsUfz4ORM/mHxzPjhzp5GhInzAas8DM7p+yaos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffac6ab38-370065de-31a7-4364-b290-67058e006a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c67ede44267bd5bc0400eb0be46dccf441ca462769240f21a8a6b475bcb5e32
Date: Tue, 5 Apr 2022 17:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649179798
