Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E33C7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646101585;
	h=To:Subject:From:Message-Id:Date;
	bh=25ho34qSgU2ZIXhpBgGmiDFVImWrmXIQuTqolsg7du0=;
	b=lU3vplp1zY8RMbOUO6yoiPqFs7KEN2Suo1SZRd5+IrENExrMn4Jnb7n/Il2T0m5l
	qhXEQjbpkAKY6+NA3REHcQ9gaWEf2W9ivAhBLULNBoCQMLNZ7c0GZK93OK8yYYK0VDx
	eTkksQ7TUveFWJ0ATV9mZstHjYG8L8LgI8PolEPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646101585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=25ho34qSgU2ZIXhpBgGmiDFVImWrmXIQuTqolsg7du0=;
	b=TpoZEtdYNf84rpY3iUao+AsfIlgQG//BJOa2m4HkgEIop7w0gCUk0y+0mZYKqncO
	OVVNXOWlQuokV3elPaLYTfZhVGUALXbdVX5PUFVeZLFir7w/v9ptOWKuo+iNTiMQHNf
	4WuXg9YPFmQvhcJgW42dBfTWXgynFQgHfx+P0Buk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f434cdb7f-11dc0997-df0c-4c39-9747-c6a48f2b66a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f5c63422f3ac2f57c58355117911645622c813f65c7142f32ec88d45af908b
Date: Tue, 1 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646101584
