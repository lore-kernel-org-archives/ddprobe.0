Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2448C629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 09:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653299400;
	h=To:Subject:From:Message-Id:Date;
	bh=Tb0yrkjkdq+PkqHqA1UQJmmGs577uyEMd2zAK7gRARE=;
	b=c5bI4d2+vyCfPxK9h08kyWZ7o5E4+IzcFOOuuOWrVa9EFw4okdsrvC7lGm9KyOiw
	cE7gJAxuXQddt2evDeQBKZ3EfOtLSM4dRhAfJQo73HthJfqJlJR5vEiYXNf5XhMYBMr
	dQ9CDtANZjbpMwGiGaTJ8IDq6cCcJdzZw3nw35c0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653299400;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tb0yrkjkdq+PkqHqA1UQJmmGs577uyEMd2zAK7gRARE=;
	b=GwrfqtwPN2ATHUqe8hkTfsPWinviTn9HkWXxAkR/I99U49xxfpmeEgMFFHp0SBSN
	ez9mZiB5oDAb7awwgXYq1QdcGMuvHh/6H3qKC7v02WfHp+VromEvX3U4OV+F8SBNpkc
	RSWTQ9pi/arM2/qOr2F4O3CBUPu/VP4MOElmVTAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f052ca71-79fb8334-a1dd-4c73-acc6-9a1786eb4a12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 288635094bbe40dea3ec906bacba1522bcaa5a029855f064259a75b1f678f39a
Date: Mon, 23 May 2022 09:50:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653299399
