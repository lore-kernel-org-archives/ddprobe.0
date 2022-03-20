Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02A8258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647801685;
	h=To:Subject:From:Message-Id:Date;
	bh=O+b2DUkOSdI1kLh9iAGrjTbENXkZ0bZlWC0yoLt3xF4=;
	b=dI8yocT3ZdIbbXMHUKd9vf4/c2Nn7BSS4aV5mJGiqapZRGGlAixqq7FzHLiQ2F7c
	xhTkVm9CaSo+w0nwmNpPoNq2qyjOYpT8uJP2wVQ+3fKl6Xqm1D/1duXlkKXhZFo4jR3
	Rdjy5b46b6w/sa9AQyZWA1SITGWgs4UZCP1n3gf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647801685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O+b2DUkOSdI1kLh9iAGrjTbENXkZ0bZlWC0yoLt3xF4=;
	b=Q5pKFg+fGVA2XQbrEH1sfrCjaE+gmM1hKK6dhyYgeMGAqYcArrmkrvmripGYoriw
	asRe+wN7wANiD4pt4WzO6bpySpmGUA5y4syq8b/4P+uWj00XZHbhbZ+rGmkIUUOXXx8
	UlJ+LgpB42uZP7lWJQk+Ek9xaJN3oJzmKZxhwVkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8a25311-ec8ec744-0fb1-4e45-bd05-25376ad88a32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5c5bf996f6265ecd60dd9585d525ea767c84b089f38ec283413ce2a1918954c
Date: Sun, 20 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647801684
