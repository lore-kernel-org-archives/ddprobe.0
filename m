Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35513A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656574612;
	h=To:Subject:From:Message-Id:Date;
	bh=fUur2Xd5dZN81EdddVcrIqXnOePJigiASZC9DBwlFfk=;
	b=GOlOw/PN43DVQ632xIl4F3ltJ8CO3aaEbza5YYi9Zq5GPiqb9hrJohtSAnJBN2Fa
	n5jrBxabhAQoht6O2wKoOodIL3qYjG2z4RLnnvanAfSlkwFw8Ocss6krehxz3VapoBF
	dEtPH1C1pQeL7+Ekl6ziGoiH+RVhL9mf2ZCSKE9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656574612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fUur2Xd5dZN81EdddVcrIqXnOePJigiASZC9DBwlFfk=;
	b=a8WbGw0RwQwfTrnL4ALLNAcC0s3FIsIKQE9DW4WwrUxHmHtJocoJk9ASP292hKG3
	U1e8fVt4LMxb2nLxVlr9ck1w2Pws+bjWBL52cJLyXVMb0IOlHJQu72u3INzrVpHAaMN
	kMY1B16joOG9dtHokp/tEKDHS6PIYM+ruvU8EY7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b38a934e-ccc8b910-5d5d-4f17-b502-052a15260e44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cfa983a7fef79953ced9b9cdf054ab844594c050c6f122590e6d77e77c9a177
Date: Thu, 30 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656574612
