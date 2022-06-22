Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AF9110A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 07:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655883359;
	h=To:Subject:From:Message-Id:Date;
	bh=VfMlAN5ZktDRNH9dBKfpXOGaXYsJVAcDVNGWENlDATk=;
	b=UgCZzDWRwAfaz+VHVyxKGBf/GEfQPaRz9e5HIBOn/nDwhEwJvZRUkyJ/V9rN0gAn
	Mp26QZrkqLm2MPeWcWn3Ono3KqFhG8PEIP48qmAd1/Szv98EEhmJ1mJyAb4N1GezA1R
	yXPIGEG64FoS/w+cLPB+zjWD6pAPJFZC9lCErGfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655883359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VfMlAN5ZktDRNH9dBKfpXOGaXYsJVAcDVNGWENlDATk=;
	b=V14cxYewDvgbdGeftMtfy4xVED7dSEMrET7vZ+I1cIJqBXTaLeXkEEI9dOAzifKY
	Dg73M0PpjlSrY1/XuLxXCCfcLM+gRUQPpYSqDD2ItuDUc6fqrsE9TYRUmDmHd1Le7ip
	cYu2WaOtHJOYhdxd6bA1D8fzD9aENdfUni3ADjrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a56e3f3-9892527f-dee6-4ecc-a637-db01e01965c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4012faf880c6ec47eeb23e107f1d1c97414f62d97969917788fc8bf5e584664f
Date: Wed, 22 Jun 2022 07:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655883359
