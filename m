Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0454915A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656917212;
	h=To:Subject:From:Message-Id:Date;
	bh=n9VfLUxDd8mVvnmKBpjh7pbSkVRJl1DMhXsyrYahSDw=;
	b=F7QEiJ6YX3gVcBTJVBM6xg9ItUO3+hkrF5xHL3rIgJ2sc2Y3AyWirALK62Gieh23
	MYwN42prvahQ8KY4Ew0vVj14cYE1g0AXl5fUQ74a9M0OwqeGBWn4XD6oG0u8xcLNlx8
	5qJ7gLT+aIiu68uYuOHGu5xH7xPF14SGQN9XhYVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656917212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n9VfLUxDd8mVvnmKBpjh7pbSkVRJl1DMhXsyrYahSDw=;
	b=WJJC5dBcybV3bGCm10ML7obozPy874iwe+SY+XVETUtqciRL5KbrI/VpyHcwNLa3
	CHGv2VVkVAQEkwnHHGuRHMwbCHQ2gVkrYnO3xOvyKn4zBKQrWzuzKkz0DuGlyDj/k+H
	Y6zs8/YqoaeVeXT5urSgB26wiYgwoNtLjcx23ToQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7f63c84-365f1f36-113b-4f50-8c9f-ad51ef01e629-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69f4eb70ac00b5c62632dbff8253f279fe91f1c296540210a8bfcc7f1338aa1
Date: Mon, 4 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656917212
