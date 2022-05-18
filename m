Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5EB71852
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652860019;
	h=To:Subject:From:Message-Id:Date;
	bh=gvpjRNtxprIjMp2X7Z2Z9c0OYhAJb8AauV9SJCrSf58=;
	b=NlPkRtU27+fVQGFxpYlXRfa5JKiJSUEfjxlWW/hGmO6ki+8c5aXz04eoXNl9xpmR
	EZDM0gE+aKU1IYFL/i6+JylHW2NosrBAhIaY8bIiXattYQPGiFG2qz0bIlEmHHVU011
	qge2B66FVwM3Fyj6JgNgTW+vCTjy8uygkuC+V43o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652860019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvpjRNtxprIjMp2X7Z2Z9c0OYhAJb8AauV9SJCrSf58=;
	b=Wjz8KKn1ub+hIXd2gTN3hw1zz/70YnV7LxLMPtHZ+KeZSZOBfIHN31LAbiz+PSP7
	mqOgX5MbMRXZMZbyhTRNfIByW2wHFEdpuSWzvqPh4ewDtacWtACoHwMZ2RVotFFDCm7
	vU3oyUGFBE0GM4Aj0G0DS3p//JNMH7RaW/ceVfH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6226255-7433802a-82e0-4654-bce2-1d9a51c1fe74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 539317877dc68c5ca43a80db6f2f13c93f15c661af06c00f4d74387439f04457
Date: Wed, 18 May 2022 07:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652860019
