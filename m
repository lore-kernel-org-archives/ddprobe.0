Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E40D46B3
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 18:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649788498;
	h=To:Subject:From:Message-Id:Date;
	bh=3oAR6RJKCeDBXejbaaKiiXWAifrFfRpc2+vRNDHnlvk=;
	b=CWffGSuCrYdkoDGLUDF65TMN78Ys7GWeRT15BX0PQaWFMxGMNP3GNftRgA7s4E+t
	2ZCcMNUWUD7rsdkxlMDs8aXXGMIVoKaJveVNCJn2ZhVrBFInWVtFEiJjc9EmFrDjkRF
	QPF4x95fs5Ef8yXT6OpNM9z6GD756ap+SNOG1rU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649788498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3oAR6RJKCeDBXejbaaKiiXWAifrFfRpc2+vRNDHnlvk=;
	b=NdEHJwlvetpeqgkszstUKqdlbwHokG1yS5vMSkLPqJeiZT2vRSlgjBAakfiAT3e8
	oAl6E9Mu9eHlN9tdROTXdyx55HkSWvUC86cDmgBiLCCjGh1OdwLgQKxYRc8kBKCG2cp
	9/DAWLLzoX5J260itzYuGzkC3mHYP+yJo/Sd4MEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f0eb140-5f66088f-9d0c-4ed9-bdd3-7a70ddc99562-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c85f63074b38aae9d56a9d5c2a1df98f3b10c4239b1c6788e05e825c2da026ad
Date: Tue, 12 Apr 2022 18:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649788498
