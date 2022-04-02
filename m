Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77F27C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 19:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648927739;
	h=To:Subject:From:Message-Id:Date;
	bh=NvIE1V5PRc6FxZYqqyaks5ejtE/XkMMZ+lxwkk9ap8E=;
	b=ElYBj655lLOE09lGQ897Wc/H+2o0YlEWEnevVkJpYaDkNcM+HprlHlFZKCenuzqs
	uqRVF+tubuSarCcvYSK7ObH9dVtUWHIoADOhWqGa20kFWkxBNxMZKPuWMMUo4wdfM5E
	5c+6Y6eG37DjvEYLcUQXYnHCiGRSbEfT0SR/pYtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648927739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NvIE1V5PRc6FxZYqqyaks5ejtE/XkMMZ+lxwkk9ap8E=;
	b=YuIWiF0snlbJKhiA1nzShyPTzrrV7hl33ZSPyEwIABflQBECuzECTinko/cgAah8
	G/2EL7WUEFkhPXIoSeFQiSvWSVIXYQaGXi3OTGtINo4YFkziyflLIq1zJakpAYmvcc7
	MSTujuHh/ce9tZjax/uNMRCjSz12xwzz66I/mmUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017febc089ac-ae21c972-0078-49cc-b70c-6e29179981b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0ca57d1dd7b4d0531b96c4e0da082aa5aa4d19e2b213f07967f9e7c2f1ac2c2
Date: Sat, 2 Apr 2022 19:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648927738
