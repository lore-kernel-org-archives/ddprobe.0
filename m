Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5AC7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 12:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650631558;
	h=To:Subject:From:Message-Id:Date;
	bh=BclAnPAu3XgXeX/SQgnSSDo04pxjcoTkEqCXHCNdR/8=;
	b=mmnvEH6B8NJQU6uRx/LhV1P/6agNVDwaq5zREBsHNZ23QfM1Nkb9t+3R/+DVlUav
	t06NUcZPltCdXabMVzXuZxpoyrpTAn5SC85dAcG7Odll8plnfTJqSyLP+KphQv3rYr5
	cyEBkNnibxVujCyRWZAdOsuB7SKfGrUytTtI7e98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650631558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BclAnPAu3XgXeX/SQgnSSDo04pxjcoTkEqCXHCNdR/8=;
	b=ApqUaYn+Ak95wGVgF45Mxj8XwCVtRYC8vao14H4Bdy31uWtAfeTd3Z5fZ3fH0YB/
	e4g5sI8dAqcGtrGj/aH0eoU+OX+EFidupqFEkE9RuK6Y9xeNcv2S/rugP5KvSec12Ue
	2/BFxJ3CBW5jtitY26qB6+VD8F+pTd/o5GsbfXEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180514ec465-7d6c369e-1b14-4323-910d-0f1cdbc5723a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac6d44d042fdc7d22073894e36ad890be8da2f7b71f14a7928ed87de067fbeea
Date: Fri, 22 Apr 2022 12:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650631558
