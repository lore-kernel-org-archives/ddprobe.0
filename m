Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E947E3206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 19:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653075479;
	h=To:Subject:From:Message-Id:Date;
	bh=s9JjyDxpNdVwYbev9TlrrhHrytAcCHQAHO8GcCm7oHI=;
	b=Ah63pFPAGqgGWbh5gh6sEx7P9rX9AMjrARwI/dqYEjRbvqapRtVEe5eaB2jVbJNr
	TXwBTQb2+1grUrnyguJHKNyth8Ea36x5y3ss6Eo2DdHlqqeNVYpzdEp9gXPgx64ci2v
	HYgXDTdF0lmezHEWNFSqjUQiIfTSTuyIRjL6b7y0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653075479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s9JjyDxpNdVwYbev9TlrrhHrytAcCHQAHO8GcCm7oHI=;
	b=VP8O/+fAHC41PwfyEuqzj9NYFkmI38Ny8MC+j/QeI+Hm+iED45Or2KpDmVWkHQKJ
	3FQ/gEMkZzm8efAzIn1AcFbZLV4plycTnC/Y2NtDog00PbLH19WziUJKNmfEo9GVbhq
	rwFWWaYcJHkqxeP6FstXQXOU0OvR9hPZB9jskWxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2fa0b35-9f343c49-104b-48a6-892d-b5b919bbf746-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 487f396f09f5149241055e0858243abee3b3b92858c6b9152e58f6dfa8e31cde
Date: Fri, 20 May 2022 19:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653075479
