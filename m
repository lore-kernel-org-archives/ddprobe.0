Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA3E628
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647945085;
	h=To:Subject:From:Message-Id:Date;
	bh=tJFmo0CqMtZVcimJbKb5ox+Fh5+CaOAAwwhEC1w1G3Y=;
	b=mr5OB0zWfRQSkAx36LPLcfKcQvReuG9WPamWKJXqb5Nzs++Z7IisTzRYdi+N0GLs
	EmJiQH9/SCWxGuPL13UhvyHfOfkbhSCrvUV2kIvjQ6lsTiE3zaQaOEs2HeONx78OeJ7
	gSnyhY7UCYErjrSONdxauOKppyjBWmIOtOOuLabY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647945085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tJFmo0CqMtZVcimJbKb5ox+Fh5+CaOAAwwhEC1w1G3Y=;
	b=h+0FLD/z+0xJNd/1ic+btLx4KEtmrnT23fbj0iodvqhv4p2qhLpXQ/5XrVIzdH6H
	Hz09W1jxuAx5OTsoob297wpcyQglcnw3cb97fqHTP2WkZkHpfzQty14hJBnsSxI5wkD
	EryLhdoLXY1Ox40NHDvfEkIL9cGqxTQu3fgQydlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb12e6f54-defc567f-f054-4faf-b7e2-cf0d0d9dd22c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b638a5c73c919924689c61516311055b4b5bb8ef4e08c363d34053b9c258755
Date: Tue, 22 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647945084
