Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE117A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 05:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650001738;
	h=To:Subject:From:Message-Id:Date;
	bh=aASWFPOcj2XUjfB1AtrsI+h/V6j9txcOCX3v6MWZaP0=;
	b=DVlTo+MXnzx7DGAutZ/n+1NdN7W/MmxRhNpBDAeJ0CP8bspEFU/mv3x6y0NgN9/Y
	Ni7ls1WG2FVOjTH9Dzfp7ZgogjTg2Dyyu6aSk3KPF10I9ZugqKlQs7+VX29gzHvfaQL
	d+1GN3b0aQptao7+f2rAjrtp6dOXRyFej5agNL08=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650001738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aASWFPOcj2XUjfB1AtrsI+h/V6j9txcOCX3v6MWZaP0=;
	b=OSfVaDXeQVWvuH+E9q4CTiiYViHKTXB3oH+KsMPIhJbzJNfcYpx4HxFI0BART1UU
	7HoqgF8Za/hoLUJRzA9+Ft/CmWMbko50y7hTQf72somGPp2bvteDcQz8vWh836W2ztm
	A07fbJw1OIBuPruIel5lOrRQnHz3lLfzwGSqK4H4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802bc47a22-64c0b3f2-1455-4927-9eaa-cf536bdb353d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6562e5e43943d7b225452545d4f0c91a9c033c0c3afbce0f7789d943a2b59e54
Date: Fri, 15 Apr 2022 05:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650001738
