Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B904A0A
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660243252;
	h=To:Subject:From:Message-Id:Date;
	bh=u0j5ZNv5Vhpj3fQsZmAZ+fB/c+i+NXSuuNTJAwu6DHo=;
	b=V8hQO+AnidEYrOZgrNmLY5sMTFeuT2m7X+xz6Okb9VVYUXGmwy5b9nbS/T1AVzdd
	or7IJPLZMxEWACfkYVvmZyf5KHM8n9rrbg3RFCommmhzEijIz7KswRWeAd6xpD5W/xu
	q2DqD3AoZE/dTdkaWLu7BU6BXUm7P0Gwc+4IIL9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660243252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u0j5ZNv5Vhpj3fQsZmAZ+fB/c+i+NXSuuNTJAwu6DHo=;
	b=hVtFEqUohaDE1xJVndjGxZgLt1p2elY8JRHamb3woxsrDMsHleUkYSz1RmgV7Njm
	dpkEDm2xWf+QDNrrFneq6m5qrZ3gGlHCfaIEznbh/YB+v/6iverVWdDDTxpeqw65oA1
	rnO0cF5XT9yzvGZieY+n3XfUXQoKGw+P32Zj13Wo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e35957a-75e943ec-4ffe-47f4-a5cc-187b48b5c929-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82028e5f24d3872f48f969632b74461ee42461a802e6aa88cbfd05c259b37aef
Date: Thu, 11 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660243252
