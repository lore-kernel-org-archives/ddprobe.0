Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78103FED
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 04:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644811841;
	h=To:Subject:From:Message-Id:Date;
	bh=HE0vJxC835wZKc8qoycgtSlUCKLkBNQoAItpD/d1nkU=;
	b=YLVtuQU0hVmTzA9QXRbZCqp1vxXMncr6OWDe3cwyg4HQtEuQoaCvFyR+7kn35jXV
	ZQR0kw/TygmX+I1wVxlkb3vhJSNL7b6T7t+AZCVUXfeUvTpJy70M0BgtT9z8FFvUPYs
	GiSlCsf5zH65Rv+5n1RNU5EJfua8o4OvW6mM8sag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644811841;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HE0vJxC835wZKc8qoycgtSlUCKLkBNQoAItpD/d1nkU=;
	b=egpRYRuTSNYWGdnfZp9hi1K/KHPUxR4H95XqbTBpCbvmYE3KAELYG6jdc+SKx9Y1
	TegQkcMyJMJ7ZXT+VCmd63npcBHR8owqwpEPyMXD9oBiJr73H7I5KSXLhcOX6REyZ6z
	Qaf7JKdovWOf+gz9gq7egOzH9XWqZQuyGXsvToGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef66ced63-bc472b9b-7402-4534-a2c4-af59f20437f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a18a7c5e7f14cc9eee623cb7dd58bc547cc0e42964021fed8dad74fcd7110c29
Date: Mon, 14 Feb 2022 04:10:40 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644811840
