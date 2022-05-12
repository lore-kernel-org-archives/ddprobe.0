Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170413D60
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 20:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652387039;
	h=To:Subject:From:Message-Id:Date;
	bh=iyw59O4fcpIhaxDKOWIPauyRB0jn1SKQ0vwIRiOeQXU=;
	b=Njj3GI3jdGCNr284eYJzQJ6Sw/Z2RKx0j2gkcRmtvreTQdCWGKElaiXEKD6uJqrM
	LQRGZBDf3DJuHkDaV6G2xcd33F4oEVGcu4hDFjgqK4SDDr3sau4Xv2LcvXsa4nnpqKr
	8ZMzZDDnylhxzeeQjC1JRMaGg4AgMHZQbRdFNgcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652387039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iyw59O4fcpIhaxDKOWIPauyRB0jn1SKQ0vwIRiOeQXU=;
	b=YOOuf3rWjvFamn5RJVkafk9aP0lLP9x03J5bkVdyfFagBTWI61NzGmtKt5UkttLi
	crlBM6h45/ooFql9C8XXTwx7SWn0+EtiKusuS2ZnLz2f8X+kl3E3eYEcdqevZoi1GjB
	8+6QoUEXmkUZjneXV8/fARvEEEkHV0K55jsaiqpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9f14836-45e59dd7-4238-44b9-97ed-e50fbd597547-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02cb0b697286ce43c7b5ed3e9bd777000b46299864b42f99b9e3badd7d2c9e0c
Date: Thu, 12 May 2022 20:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652387039
