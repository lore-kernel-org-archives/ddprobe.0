Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCA15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656119212;
	h=To:Subject:From:Message-Id:Date;
	bh=1zOY/Sb2e8ye5ttwO6fpz4HhHkiM+klNA5Vxd2GCsvA=;
	b=kJccB5DIHwaBlpxLtdHtnp4WhSESk1EILQ/Dtd67wzRgI5YMs7RcREHhSNFAIWEw
	NPT44iskwM2xhoMb5x3OSli7uoKK4P2Q5JI/n0JRdiPU7xMBrz0q8MR9KqrtGHF0IbB
	tpR5vztD0wi/KqgcJFjEsL7Kj6Y42C4M6rFh+C6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656119212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1zOY/Sb2e8ye5ttwO6fpz4HhHkiM+klNA5Vxd2GCsvA=;
	b=XbpOsK/WDfZpjCkUkMYRDqCwwZbyxdxYbp81c1qFwIVidWZWgcHsWnmyu7m5LyVB
	5hoW9wJl6Q5uxdHXdiEyM3xev9XwFJ8uZxogP3JjBy5qG3Wm6xbaqSDC+CK0TT9Xnz9
	RSaRBOvBTRKSxfu1Ln3adyQrlOM/2R6HMaSU5cok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819865b8ea-f1405596-4b75-4b09-9069-139cb4c382e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3001a551c3dec9446efc2a23a0b7700cb196d860915635d53bcc3328773cd0e
Date: Sat, 25 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656119212
