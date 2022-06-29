Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A4B7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656526012;
	h=To:Subject:From:Message-Id:Date;
	bh=UEp/6nQJLfYOcwJ31hmwbRhQCocCFCFPEc1ETlmCd50=;
	b=W+cAIm5p4FhLWcHKquQ7MT0LfXEOa6pnYmIb/+cwa935RZcXo07wpqaEtskFN3ZZ
	wQ8nDIx1dDUm0FhCmS4S5907rpm6VZ11O5d2WP3U+gAfa0NSGRHvvzhBs31vlPOxSaf
	s+QvSHaId30dxo9ScqEYrY/kWhm83i1IAU5YLGw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656526012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UEp/6nQJLfYOcwJ31hmwbRhQCocCFCFPEc1ETlmCd50=;
	b=jMBKmrsmh6/thGbctGL5vsSuuWEib9RPEwC5PNkUSCzTEVUcjz+J6CvQ7D42JBFG
	nN6mMcdsA0GCkU3QLfhqdAs5Abnu6F2DNpXybFqAG0g+znglDOyISUL5grDlMkI1JqT
	9EO4vpYm8XAYed1EjMiMyouuqK6fmdGbNNaMwmHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0a4ff96-5c92675f-6df0-4530-8b38-3137c18a6823-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7efddc135165b1196da5e489dc4039f33b9da289d5ee3c3904f8a5bc3eb8faba
Date: Wed, 29 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656526012
