Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AD17A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657977412;
	h=To:Subject:From:Message-Id:Date;
	bh=v54SutiYsM2y4lejKUbVDgqzDcb5kHEBuJFXIrxGbS0=;
	b=Mt4p8yd7mWu/xci9/07jLUbRZiLKkZtOZvcYe4/76lUu2kUYBTgPKOBtyQpdpeX7
	UtEs7Zs41gxkI/zThoBUhtroEIxgzcWzZODMOaB5gmgPd3fQ1mfCwY6Jy/RIcvlYPbC
	n/4klgFbIV6qGpCb/om4Va2A3e4/hJemKFgYoAR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657977412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v54SutiYsM2y4lejKUbVDgqzDcb5kHEBuJFXIrxGbS0=;
	b=cMtIDXhq/mtLA0nzC/UOFqFK+EJQFG2e+7OdhT8HJa3yZitnVxsUI0QVTLPDxyFg
	X8/DWhLMWMwPfxUkB/K9UVkf9esqVM1Le91hJvno2UQyP7zG/0ylVdr3bJxgUBrfXac
	DiTZSj8OXxoWUyD/M1D3Jin3j7KFuuv8U/gPVzlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207279ad5-705219d8-12e4-42d2-a213-ad1749cb85ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29b7a2a3922f19457c6b092fefd0daf208bff1c9cc27cc1a75f656bc09a5e50d
Date: Sat, 16 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657977412
