Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E4717D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660179052;
	h=To:Subject:From:Message-Id:Date;
	bh=Pmi2+ePYN5CysJ7fOONqHXOjcAfdjA1xE3ycePbeLwk=;
	b=QTblQeVPy12QqjzO5yrIimTf2zSX6ZA69ZNcAgPH9oA76W7a3Bs+at2x19pUxcAb
	q2zz8MouO6lOL0RoiRlj0qlcz0yOk4GYiXOgpaKVagLlAkGAO07u3FnK1DSh4Z3fvJr
	h41BaQ6o/VnzIeCc724XuGlIx4BknJBMk2lQ74mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660179052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pmi2+ePYN5CysJ7fOONqHXOjcAfdjA1xE3ycePbeLwk=;
	b=imCmc2CQBaYTWsZRBfW7Mv+03Lfp5ksPyaW9/n9EsDpP2vA1qyoZx+vMOfkXtBbj
	Sneg0hfZaJdmSlRYrsOanpKzRRsUOdxtt8a0Mn/CwrqBhAyizgMNQfVdWEkVw1dfBPG
	IwXUzcIRR/M+bVIMxhxetU1n6ahoKatiHIeoZUDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a61f850-1aba7363-0f62-405c-b4d9-163651c994dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd3241bc203d80077bd9ddefe38dba928ef2ab586b3c9f09128f14dc3cd57480
Date: Thu, 11 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660179052
