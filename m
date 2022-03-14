Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41F26AB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647288085;
	h=To:Subject:From:Message-Id:Date;
	bh=iM5Yj+4ul8gHo08wRu5Q1eY/AInrsxnpxpcCvNsNJnI=;
	b=NhaMg02KfWY2ZBG6LC5XGYgLl+1JRZoc4Kohb5O9ZpTXaw0opFPQMMmaey7bcFRp
	1i7CcO803rACStX1Dr2K0PChKRjpYn9NyE57NXK5yLnbbJ/JOw4SZJT7g89DZZNHPnd
	h5LqRx0QmeWdYebBWpkRUuJjL5OEXGLIsMdGIctw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647288085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iM5Yj+4ul8gHo08wRu5Q1eY/AInrsxnpxpcCvNsNJnI=;
	b=YjisM86yeyhmxTl834BapvLK52+VBBHMiDaxw7owHNcLeqhb1ndg/fMnj0wUthMj
	6Oi0BNCzuUcYDCGE6azo6M9lHsovG860reNhkNvy0AS82HsIifApgyFISibuRcGc7YQ
	eEbCy2idJw0vY/ykQaX1sMtia8txo+W++p7qqH10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a05697b-84393588-8d49-4b3d-864a-4e247350e226-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83414696fd7c362cfee0dfd923b55e0a872d6dae7c6fab7018988e98d8591230
Date: Mon, 14 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647288084
