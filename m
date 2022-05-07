Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B291383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 19:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651950538;
	h=To:Subject:From:Message-Id:Date;
	bh=eqT8SVGJ6hwcDfqrLjc8VrYRkF7L7Sq3UXwxiEthL9A=;
	b=aYSNrvUaHTBEOidqhTH3qJcC7YZltZ0r0LbyUkZU/JAwMqbgJNKzUD/tzW1H7slq
	UuD0Ahtjrjgk1tPxjg4Y/t5U4AfIP3AHQJTtab6QfNOeUn1nhdSoxzhuMmjDCjqXMyB
	PbFNm2hNPodf/76Ho49/W+SdVOKGnVIqF9z+0VsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651950538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eqT8SVGJ6hwcDfqrLjc8VrYRkF7L7Sq3UXwxiEthL9A=;
	b=AtlSH64kIFNARMQtLv1b3/BFNq8V4pEoCFz5vnoXuOwBu171JUqZdnZpiE6M1nro
	XYcRYbNwQy8TFRQURXw8NryXuIsPF2jmys/jHa8q+CkYg9kRn/f5yBMAUPzdFRfiQBV
	MUQ6j0THsicau8qnsbspiSijwHMz4xzedVuJrbKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809fecce1b-da6708e5-6300-456e-a86c-69a6f356d2e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccd9e21e33752221ae47d51a8fff36d2b64a095288e4c32a7224cd0790861d92
Date: Sat, 7 May 2022 19:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651950538
