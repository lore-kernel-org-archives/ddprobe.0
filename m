Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A52B2F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 21:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652217479;
	h=To:Subject:From:Message-Id:Date;
	bh=ih+ZtFnfoRA6xQCoq5XF0Wdoo9crk3zU21zXwnOn6Hw=;
	b=mmvT+2H5PGEYwVvZdB89ZUgAnFOoRAIraybBxdfHgtTeHRI5MLnPWSntYcktRDQw
	q9ULMxG9QKW6+h3xqBp3BrRZb2QFaObhB2m84PBkYI3TclTuJZI72X6u7UWoqxC3iWB
	8+qByJuoE6Olj/6OXLCZ/+8ygc2mnjXEc6QndmY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652217479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ih+ZtFnfoRA6xQCoq5XF0Wdoo9crk3zU21zXwnOn6Hw=;
	b=Y15j7MTl5lqmbY6iDjU8EwNZfr6G32M0wykm6kxH3xIaQ9AroYTkl9appy97B0Fb
	sf3ql8fE3NpXLI20cHbQov7IsmatrubDPQUG2a7zvSsqSHgILQxtMBXpMvaEUlsAxuz
	bwYZawTsqPsbPBU/9bb1VB4ATsZzN8LH7LedQ/z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afd60084-9ab14cc2-7aa3-4a5e-9354-47b141f6758b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39f80d77f2bc8c21bf814d337892be457b0e04b24e80097b1fece40f9a5aa729
Date: Tue, 10 May 2022 21:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652217479
