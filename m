Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AEC621
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661131252;
	h=To:Subject:From:Message-Id:Date;
	bh=dt6opjnkA68jv/GP2VdrjLL2rThGFx9UXtFYAkO34xc=;
	b=SiqLKjDshLuQUzwdVBJTgStnINf2fdq0wo86fBNctE0pjwH7is3Hg7gUqG2rCN3/
	2UOA4TXDRy4CqQCGx4rww+O1oUcbJYha4kH880Y3Yf3HrEzJNsL0NgE0kQmENbQKA5B
	vnD7vK9Jo++rdEqbqjv+7p/rZIjez4qMri8aQ4sY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661131252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dt6opjnkA68jv/GP2VdrjLL2rThGFx9UXtFYAkO34xc=;
	b=jMJdvlfP20kIcxiy1YbiEWRWJ/uJexAuv3WIZuYkVRQUDKY9PMzLECiPoBpVnwVK
	4b/WjpnNyq3m53NYtJ4LWvxDQKxWTCR9XlrOGkFtyhFhU5ecjT/LZZMFzA4VgBhmrEj
	I2s27kLfDq5QuynJaDbeP7PwJqw/Lbrc5XIh6tek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3236345-f9b10146-988c-4336-8d06-6a27f06c566a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cbd0838f26de159faab9f6c130bb89265e218db90222f39d1c23b2cb73bfc2e
Date: Mon, 22 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661131252
