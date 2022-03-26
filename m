Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550CB2F25
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 09:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648286698;
	h=To:Subject:From:Message-Id:Date;
	bh=ud6JH+12aXkig6vXkGyOdWGIdtXrtWujbEo8qCX8Zpo=;
	b=GG5VKadteddWb3yUriblZfhBPtdRo8nWv/5Mn8uhJJrGNJHLk3OxtTaJAiQOIfoD
	7K/v5sao9yUz5/zuCW91SwB9NhvLAhN/UhGaFh38SQAk2UOBdylg9kcOWICbI6JSGXW
	MeAIGIxwFrvDKpHVGuLh5oa13GKC7ljXDfjG7E/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648286698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ud6JH+12aXkig6vXkGyOdWGIdtXrtWujbEo8qCX8Zpo=;
	b=CqfFHCwQtoMVsG0fULBYsqQmN1ldLV70wYVOGJvB52dxuW0WPKDICCyxB+aCIC69
	SjeZ7nL60nAsq3wH4rBL/Gwj48xvNKbPnMGXwcd4g1ovBVxN/XXDyPa2xzRey6syB0u
	KaKIzQRtF/LIIfiA0dDQ4sUbl5SruJNYpmGWRACA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc58b0b1b-76873946-c95a-4c3a-b9f8-1248e6392ea9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a29b5f895dd652d865aac0f8cd1423cf877fc73a7618421cdcd6c179f121980
Date: Sat, 26 Mar 2022 09:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648286698
