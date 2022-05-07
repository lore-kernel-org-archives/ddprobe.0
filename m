Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC99DA52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 05:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651899898;
	h=To:Subject:From:Message-Id:Date;
	bh=bNDzZgq+CEvWhHAT+isu84SQQwu+hscP5yHnhcHmmdo=;
	b=idl0HmgpywiZllMR5ig2+S4CaCj03F6aYdFyJLp/YOQd4hlvVfebMX6D21ZO55Ct
	c8VZiRVUcXzZIOzQq+DqxXjwx/x3O4pQKsWYgc0dvuQGsZpJtncZU1zGZrDMPaj8tLB
	Tpan+dhf+JUZUele7lW8dpwQFbxrmrAeE6Sx6wM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651899898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bNDzZgq+CEvWhHAT+isu84SQQwu+hscP5yHnhcHmmdo=;
	b=fxhj5om268D6x1dPzV0DBeRJAxHUcNDqD5YwCKvcdu+HeDwBuTNVlDLJTt8rW9u3
	XoQd/Vi0tb31/MzmkTo0QhvG9tTOoqd7pl3mLRkIjoSbL1tZKMZ7V1AitrTl2ICqpxb
	ilSLrws8yn2jt9vSHnhGgrlNprPxcZ/asiGpMNeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ce8199e-8661e056-0452-49e3-95d6-51d11fb351c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8f9c9ec5dbb0d39fa4d46097526cbe20d6f4b94d8e7936033a87c053905a265
Date: Sat, 7 May 2022 05:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651899898
