Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B73A7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654932539;
	h=To:Subject:From:Message-Id:Date;
	bh=EKM6fvZsa7Nv0wWhT1oNiV9FPB4YYrvbc7EXp8UelQU=;
	b=FYO/xFLYEu4dOln8QkxFz+vjdyvsoJYBcBtvBp2FxxG42At4Mz3/Yk0T1HWAQSv+
	IbDhKCrnF4zXKPWrXKKfmGc7ja7z9TAuAPFeFye+zK78vjMSBPDME8YvA2g8tm8xqYG
	vso0P6m4hJdujyt+BPF/Q6iAiaFWL0DLS/wT3JF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654932539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EKM6fvZsa7Nv0wWhT1oNiV9FPB4YYrvbc7EXp8UelQU=;
	b=XiY4LcWU1cbYbvbBXt5otK+AqQfNYn/lmwZl23MuuDtDNaIYVkvoxJIOGfAn3a5y
	xC3bQAQmbj6fm/UckkA0Gcn8lalTvWKM5VXkwCxyuidkMU10+hoy0P2Fw3AnN5igrj9
	18Iz+n0R9AipeOk4AanPDit8zni06O5W2wWbeGZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151aa87e3-af663bac-30a9-4c5a-84a8-cadecce89e53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c89d862f3c3029d5d1fb1effd652b19b555fcace1fba297e4ed5b916420758b
Date: Sat, 11 Jun 2022 07:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654932539
