Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BC84A1C
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657745212;
	h=To:Subject:From:Message-Id:Date;
	bh=dYNL3nFAiuur74SLwB+522P0M31xEEeqlBGlDu6Ew5k=;
	b=MBlticWU4ak14UJmRJbJV0/EyQMmzeBGcJRNzmOkWdU2HNFeBF9OSliMv1+6iioC
	bCxARw6rmssv+nqwhi8NgZEr4DRg0sYUpIk6jNLLnNoobcJjB+VN5qO/MNbjGd7edCY
	M4CQK437cVhYQrZe1xPyhPsu+03RDhif+CPvD2cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657745212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYNL3nFAiuur74SLwB+522P0M31xEEeqlBGlDu6Ew5k=;
	b=Tg2isP2A11Fty0zQNN84Il18mLXUCd2ADP+MbDzRiMQQU0vgzCQawRGnSJwGDdF6
	lD6lNzvVjc9wHLcDtUqHMO9EoFSn2keHeVfVv8JBoN+68o8hTajD9hUT6xLtq69sJlL
	/bLxpZR0PhjWhnho/inKyaDrCewmH9WeWZEer+5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f950837e-ada81822-ad0b-43fa-845d-4cd7bb42f1b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b39786544687a7081fbbfd223c3baf608744a61614858d9e1c83335bf0a300d4
Date: Wed, 13 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657745212
