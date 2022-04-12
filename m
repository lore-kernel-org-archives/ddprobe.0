Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0613733C0
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 20:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649794558;
	h=To:Subject:From:Message-Id:Date;
	bh=DM2d6KJm+vwn2stKjWlGam1yEgwSl+sqoLrcCT6rtNs=;
	b=Bv4Uf/wOTnMZNhi7oxajI1uwhKljJUr7/l38B4GLfL2UjKMSGsAY7EN/aimjxR37
	c+WQUAwb1mGwQ+UOX61C4VHafzoK2sfvr7jlF9F3Ikw7mAU022Cg1eZoE3sL07MfLLr
	bTmvPyaci529gvj+QljVGOWcSBQ+/HHlVRXR+GcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649794558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DM2d6KJm+vwn2stKjWlGam1yEgwSl+sqoLrcCT6rtNs=;
	b=kbZRQ/sATdqkbuslBIunQ90t2XvE9sOxlnEviQhOxDwflZLnNfBySlixR986pyhE
	kYI/oqKF54a1wG2O14916ZzjoBS5v0ChmTjKtw8Ecat8pHqqjDtXajgWWb6jPvp1Tt/
	zDeL8JsdEUmOSdOybr9KI/KhiTuTFaIxob8Suw6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801f6b295a-12037798-f9db-449b-bf0e-e99f926f812c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72a7d7d6ddba9dd552c01d37b7e934b23f2022bf843371e76548f214f526c641
Date: Tue, 12 Apr 2022 20:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649794558
