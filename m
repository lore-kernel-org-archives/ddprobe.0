Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F6BA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867424;
	h=To:Subject:From:Message-Id:Date;
	bh=ZRnCoj/V2HpQj5VD48ZrUcfOoX40qOeE2wTSlcBZs40=;
	b=dIR06xEc14OKbBBpjMQCK6kEiILWJwA94g6W8nIGB6O0uiQyMpXosLVo/5RDXRAw
	bYv3HmI84msFmoaJiYRiqwXmKw1r5Oa9Ys4K5/YWAD7rdK9QlrpuSIl3kiSPzhxp7gj
	73u5lLfItIgEydzIXgnozbTR/afkPs1rk+icfF7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867424;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZRnCoj/V2HpQj5VD48ZrUcfOoX40qOeE2wTSlcBZs40=;
	b=CEXTi5QlCeDfOhWW6SMZhUzqOcqiUTlAFrhAD6IPoMRSeX91J+B3tJH7ax8HcoVf
	pD8/rVWZtu/BsKV5GVcRcBg+6ASishYMXk71YirQMGJEUHfmLe9p8NIZERyRw0wtbQa
	30BxjfVw5H/Q3W1O8v1hU0rmM75hyjcKsYtN4cT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bd11ff-ae56973f-231d-4365-93bd-5e0f35034c81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713df3c603b878538c32ef3ceafda29479175701f413157e23650a018de97694
Date: Mon, 14 Feb 2022 19:37:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867424
