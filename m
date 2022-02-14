Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DFE627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 12:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644841829;
	h=To:Subject:From:Message-Id:Date;
	bh=Wx2EET0YgGA6r6euylyGXtblZ51HaPLKVIJvf6JJmKA=;
	b=Na7kATEu/IH+BpF3WupaN8pvM+zB7GnJMfMEAX1Ye6If0Q0sIt6G3+uBEHPyOOsf
	fBXe5dcDj6ZGztpeY0tLokOTc0QFeGHYhqLDkaFG04MMIB09H8qUm+Rb3oNNViJwRZo
	ZSdmfQCwnUjgfYqAatvpWFHsQ0/lD5Ky3fksk2aE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644841829;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wx2EET0YgGA6r6euylyGXtblZ51HaPLKVIJvf6JJmKA=;
	b=E8nsdiwJ19TfbtdBZXVQSUNXq5P/XLXJkG6Wld3TPWyMmWrOepk7dR61TwpCGdka
	iY/NfmZgYhX2cnFggjhq94MlN99ljM7GwdboBUZFjdUTJ0NPk2R/0PUPxCL1kSlwkl1
	/EIwfNzYYUeSS8uXJ+Xm/HTt+eA1cl7rZRFnz5l0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef83681d8-513538e7-e677-4340-8101-30a31594d555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10739a2876e19fcda15ce7b378916c374d4c0e80033a25dffbf889bf7c48f45e
Date: Mon, 14 Feb 2022 12:30:28 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644841828
