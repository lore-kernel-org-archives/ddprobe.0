Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D277C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654907160;
	h=To:Subject:From:Message-Id:Date;
	bh=8AyfEmxAQOipu3vEuGgB49zzWEuqkYKP/70RbNwGWDw=;
	b=g5BeY3kRMcMyt5kuRKzO8jerbhX1+0uK4xFdAGqaJZd2Uw7C+5ry2NYdcdCjkfGS
	gdoxuykSj27dWeIA8bUsUC5o8jFI2W0HrESkD5w8cA+xtGgkPfDFhUff+Bm5nRHLJ7k
	1ithYmTVIBYaUINBn7bvr0XgbqFPvuS41p7Bp460=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654907160;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8AyfEmxAQOipu3vEuGgB49zzWEuqkYKP/70RbNwGWDw=;
	b=BmzlmcWctjzmOiOqYNnOHCMBsmQuLGE5tDc8n09NBKfWrAWTP9Ek59I8LjvUK9iJ
	0NbOlESews4V24ZUG70V1WKYh28mIMWL2lCxhSb+wTeTvRSdMe2Auev6xf20Q9CD2zG
	TFRuUttLLI5x2CP3N4IrTjy5LopiQgxLMfFh9Jyw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181502742c6-12e5e117-c518-45b8-9fd3-d61252edbdf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c3cfe79cd9ec1f410a45ff5c24a2e5be98451f160400c283a504fb6ce92b109
Date: Sat, 11 Jun 2022 00:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654907159
