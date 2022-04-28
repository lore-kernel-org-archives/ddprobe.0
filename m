Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175A9EC2
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 14:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651156858;
	h=To:Subject:From:Message-Id:Date;
	bh=BozrGOpSgozP9o+h1lrZDmEmy2n2xT+dgu8M+9vjnCg=;
	b=KJGw3rrnHp1Q5Zmh+mPoY1pCvNGbFdEiMhzbMBeCqmJ/qFydp2eaQ+/wqU5v65Xc
	E4wNYAqXvngmORSq0kfm+NTVvcdtuggAl1mMNp6rXcJRhwtttJ5NBm2jQeAlPoTdwDb
	APt+Imhf2JiuUEOTtcsGd/ID6bjWCw1Y2KuyoXqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651156858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BozrGOpSgozP9o+h1lrZDmEmy2n2xT+dgu8M+9vjnCg=;
	b=am+J7A+QTs/YE1sPEu96WpIWEcLD+lOcX0k6mUHUOcm3W/ffGmiQYq30EelDmbP8
	Oxe2+KNc8UlIo+nfblA5qBlQRyOe4jBxsrv36FMYVBbC3mwOL84Xbbjt4959WMypWET
	UfCihzrp05POj3/AnVjzbzAzUrbpGWBvlOvx5c/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180709e35a0-8673633b-ce58-4c76-b4ed-ec1ed9cee8a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0171b6ac4e42843f4ae1a8ac98bc4579d8f34a86734d89a8faeec14f83358ed
Date: Thu, 28 Apr 2022 14:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651156858
