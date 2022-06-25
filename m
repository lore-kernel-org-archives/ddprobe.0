Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2753C03
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656187012;
	h=To:Subject:From:Message-Id:Date;
	bh=lsMImyQIYx+ctMxscphi7/DQKJBC+1+wbv9j+xpeYLQ=;
	b=OFL9tm1CFJMrAS+fPtoLschJSUInGSp2SCQ+S/Umu48jMfVJngUILt7F0A8EFL/W
	Y9ZV9vF5KPlFXJrWha0AD0ccepN8HvL2aY9ZPwOI92ea9/yS7FxjKEWqM8CSKN5NGUG
	XWQ79hi0x+L+96QQFd11zvIDs0iPZA6GSlk9NKJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656187012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lsMImyQIYx+ctMxscphi7/DQKJBC+1+wbv9j+xpeYLQ=;
	b=Dkd9LdZyn0IlPxmSejEVo1iAKlASwAbXXDFk24dyiYg/kjOAgVXtDQt/TvvFdcTQ
	XEYumhp02upuJbNkI3ipnAszw8+oXjPt16eMYSXFsM+6k+8FTZm4S7au1RkBous/5v0
	n39Q7GV5AEIFSmBxkqqUd2qQvg2qyVdNvJo+h4AQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c7044b4-b21c33d3-4aaa-4c83-89bc-ffbdf4cc3d39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce4fabf1d9564aa585f8e41685a840700529faa3c2fc615e784dbcc7c5c4b4d3
Date: Sat, 25 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656187012
