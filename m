Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F3361
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658102812;
	h=To:Subject:From:Message-Id:Date;
	bh=2vh/HcUFs1AadJ89V9SKH0GcQVQ9I54BcxfA9Yw2Tco=;
	b=jgekADXRWxJDDJ4GzEPfgD1L76zLN+HAm83dm5FSsPF/IbDYZLij0gBDIfI9xYmo
	REVAXmfWLJAJBB9raRMY4Wsuy6YwaSUgAlmjqlsbkxVHF+Padz780FxMmgy7DXA1g//
	aTWyR9On6yviZC7gcAhgyV/u0sSViw/VMebwdKnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658102812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2vh/HcUFs1AadJ89V9SKH0GcQVQ9I54BcxfA9Yw2Tco=;
	b=RDIvMdKXJvkuWYODX/mH/XieUtfvK+/0jOjI+yMyXfVl5wjWpjknKaXPNOnZl9K4
	phOuxe6qPlC+cb0hQ7+ZM8hyIFvvQkcv0gYuDs5jMWQl6fe7/4+0Lq/4w477DWfFY53
	ySTr6nigMfYV83AER2juTw2zkvygvW6zDlzV4TsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ea10e9f-095e824a-0d4e-4d64-bbc4-59ad5fa45463-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dd1e30cb9151b295440db4195eb6194091169806cd76f3db550f5dbe1e658b8
Date: Mon, 18 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658102812
