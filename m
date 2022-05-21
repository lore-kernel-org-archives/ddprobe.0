Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B78A7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 00:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653092039;
	h=To:Subject:From:Message-Id:Date;
	bh=AO1MIIZ9e8YLAG7TuAHuXh0+iMewZWqZlsj/LXp6ivo=;
	b=fWUgyk2so3OTy9fPScGjpyf2+j7cmYVP77oZsnkngO3tNckPC+I7uGSKG1M6ZHkh
	sArKXrVTK0PjcSN1GCkPpiZvJXQ9vTciTvI7BSHeLWawe2bbLCvqiXm09SdbJsXXWfC
	LDT2MUlVBipCjtVwBhNqyhUsXhiqc8euualqztY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653092039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AO1MIIZ9e8YLAG7TuAHuXh0+iMewZWqZlsj/LXp6ivo=;
	b=kq+Cbke38uGd4/s1pLS2JdhAp+oqm+K4o5sQDhZi9sg08ab39lbwYPOOkruXY+B5
	BDlEKk/bspm/tAz/OfJqoImwEd6+0L9CNss5XqKqWuSjsPCTlNC+6vTetEgCBwuLQZo
	/uPivX9Hrwhtmi2/fJ+jw9lSSA1Exe3R2aeFJm+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e3f6ba5e-b7e88082-a1c8-4b1b-b146-7a765aef3cd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac7e03dfc63ef3fb97fd8903dcec42949ec83173ffeb52a1d2e4b3d5817318a9
Date: Sat, 21 May 2022 00:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653092039
