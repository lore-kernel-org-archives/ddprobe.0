Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23987A4C
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 22:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648764658;
	h=To:Subject:From:Message-Id:Date;
	bh=BWHTS36Hmg8meKIo6tZYN346PstPzAFDt0uLS/sBIb8=;
	b=RXEXDtlTYd7MfcM1RPQazZjj7oBPHiwqkpdUIsacd/jFQQyQdMlGbbKVDnOOqETx
	/8+PfUjm3drYGXeCY6qgwcT4cyWyhj4eoWUvHVVRWhPhJlRgbW3YTOd9RCUNYtC37PU
	Gk5dWX3LRJyTpl+AHE5JQE4wkSpt68DSaI5njxdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648764658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BWHTS36Hmg8meKIo6tZYN346PstPzAFDt0uLS/sBIb8=;
	b=EiSZ6NFrqPW5ywta8Z3DJ5umpapvKrNa9nRUhDPg1meCOXy1EoARsZeGs8xbVMZa
	kSkbOdkNn1ksRYod6sYzxdtwdW33WsCbZ11Z+WpNUjkg5NG4gJNooQ7s9ZP/PUejlj8
	fbW7zQ3o3hFQwXGHPJpeq9vrR+ajF+dMr105oaVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe208226b-3860228a-e5b3-493c-986d-ec123e83e068-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8526c2a2d00371591b65feb7721008f526f7f5ef3de005e932aedc6f52765ce2
Date: Thu, 31 Mar 2022 22:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648764658
