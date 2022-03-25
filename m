Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3EC23DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648222738;
	h=To:Subject:From:Message-Id:Date;
	bh=P4sdXmFBb6r05IRyuFlhfu8wpt1TeaknrKnw5ma8IVQ=;
	b=f09Xz6CXYfIHn08mNq67BnXC1Qt0337Hi6BjqSdeeLfR1Pffh8zNSfSYELBXLhXe
	XNHt1Z9nDUFOecDZxW8JSTE8hnSZRHsjW82YvZu3GcpPu4MVCDtLfQNegVGe5FkTB+A
	tnt9OLp3zfaZotlU135DwsxzSGwMw5nbZb9BGxA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648222738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P4sdXmFBb6r05IRyuFlhfu8wpt1TeaknrKnw5ma8IVQ=;
	b=RfC70VUcUQ1bm9oeyWhjFruVhQo5ua4X5O3gQyMVoDTbNEsbknuEpDUKdMKP+IvU
	T+yNSKLZpjL5Y7IVz84KMQFWoT/o6xOBgzql4pYus0qxjgc6Y8HHwY8jm0BQ7HDkrU+
	hTeUj28XWm/atwz6NTNMNo3Sn2sPWN8GVmqwzy8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1bb174c-6dd56cac-fbd0-4aa5-bc49-082667530b26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6277b4dfe3758102326e434f4884f769c62e6dce26097413096cd98253673b1
Date: Fri, 25 Mar 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648222738
